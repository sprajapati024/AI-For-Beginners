#!/bin/bash
# Create the 24 lesson issues for AI-For-Beginners fork.
# Run from the project root.

set -e

# Curriculum weeks → lessons
# Week | Lessons | Phase label
WEEK1=("01-Intro" "Lesson 01: Introduction and History of AI")
WEEK1_L2=("02-Symbolic" "Lesson 02: Knowledge Representation and Expert Systems")
WEEK2=("03-Perceptron" "Lesson 03: Perceptron")
WEEK2_L2=("04-OwnFramework" "Lesson 04: Multi-Layered Perceptron and Creating our own Framework")
WEEK2_L3=("05-Frameworks" "Lesson 05: Intro to Frameworks (PyTorch/TensorFlow) and Overfitting")
WEEK3=("06-IntroCV" "Lesson 06: Intro to Computer Vision. OpenCV")
WEEK3_L2=("07-ConvNets" "Lesson 07: Convolutional Neural Networks + CNN Architectures")
WEEK3_L3=("08-TransferLearning" "Lesson 08: Pre-trained Networks and Transfer Learning + Training Tricks")
WEEK4=("09-Autoencoders" "Lesson 09: Autoencoders and VAEs")
WEEK4_L2=("10-GANs" "Lesson 10: Generative Adversarial Networks + Artistic Style Transfer")
WEEK5=("11-ObjectDetection" "Lesson 11: Object Detection")
WEEK5_L2=("12-Segmentation" "Lesson 12: Semantic Segmentation. U-Net")
WEEK6=("13-TextRep" "Lesson 13: Text Representation. Bow/TF-IDF")
WEEK6_L2=("14-Embeddings" "Lesson 14: Semantic word embeddings. Word2Vec and GloVe")
WEEK7=("15-LanguageModeling" "Lesson 15: Language Modeling. Training your own embeddings")
WEEK7_L2=("16-RNN" "Lesson 16: Recurrent Neural Networks")
WEEK7_L3=("17-GenerativeNetworks" "Lesson 17: Generative Recurrent Networks")
WEEK8=("18-Transformers" "Lesson 18: Transformers. BERT")
WEEK8_L2=("19-NER" "Lesson 19: Named Entity Recognition")
WEEK9=("20-LangModels" "Lesson 20: Large Language Models, Prompt Programming and Few-Shot Tasks")
WEEK10=("21-GeneticAlgorithms" "Lesson 21: Genetic Algorithms")
WEEK10_L2=("22-DeepRL" "Lesson 22: Deep Reinforcement Learning")
WEEK11=("23-MultiagentSystems" "Lesson 23: Multi-Agent Systems")
WEEK12=("24-Ethics" "Lesson 24: AI Ethics and Responsible AI")
WEEK12_L2=("X1-MultiModal" "Lesson 25: Multi-Modal Networks, CLIP and VQGAN")

create_issue() {
    local week=$1
    local slug=$2
    local title=$3
    local url="https://github.com/microsoft/AI-For-Beginners/blob/main/lessons/${slug%-*}/README.md"
    # build the body
    cat > /tmp/issue_body.md <<EOF
## Lesson: ${title}

**Curriculum week:** Week ${week}
**Upstream path:** [lessons/${slug%-*}](${url})

### Definition of done

- [ ] Read the write-up end-to-end (no skim)
- [ ] Run every notebook in the lesson (both PyTorch and TensorFlow where both exist)
- [ ] Finish any lab if one exists for this lesson
- [ ] Write 3–10 lines of my own commentary in the week's NOTES.md
- [ ] PR opened with link to NOTES delta
- [ ] Lab solution pushed (if applicable)

### Notes

_Link to PR once opened. Add the actual commentary link here._
EOF
    gh issue create \
        --repo sprajapati024/AI-For-Beginners \
        --title "${title}" \
        --body-file /tmp/issue_body.md \
         2>&1 | tail -1
}

create_issue 1 "1-Intro"        "Lesson 01: Introduction and History of AI"
create_issue 1 "2-Symbolic"     "Lesson 02: Knowledge Representation and Expert Systems"
create_issue 2 "3-NeuralNetworks" "Lesson 03: Perceptron"
create_issue 2 "3-NeuralNetworks" "Lesson 04: Multi-Layered Perceptron and Creating our own Framework"
create_issue 2 "3-NeuralNetworks" "Lesson 05: Intro to Frameworks (PyTorch/TensorFlow) and Overfitting"
create_issue 3 "4-ComputerVision" "Lesson 06: Intro to Computer Vision. OpenCV"
create_issue 3 "4-ComputerVision" "Lesson 07: Convolutional Neural Networks + CNN Architectures"
create_issue 3 "4-ComputerVision" "Lesson 08: Pre-trained Networks and Transfer Learning + Training Tricks"
create_issue 4 "4-ComputerVision" "Lesson 09: Autoencoders and VAEs"
create_issue 4 "4-ComputerVision" "Lesson 10: Generative Adversarial Networks + Artistic Style Transfer"
create_issue 5 "4-ComputerVision" "Lesson 11: Object Detection"
create_issue 5 "4-ComputerVision" "Lesson 12: Semantic Segmentation. U-Net"
create_issue 6 "5-NLP"          "Lesson 13: Text Representation. Bow/TF-IDF"
create_issue 6 "5-NLP"          "Lesson 14: Semantic word embeddings. Word2Vec and GloVe"
create_issue 7 "5-NLP"          "Lesson 15: Language Modeling. Training your own embeddings"
create_issue 7 "5-NLP"          "Lesson 16: Recurrent Neural Networks"
create_issue 7 "5-NLP"          "Lesson 17: Generative Recurrent Networks"
create_issue 8 "5-NLP"          "Lesson 18: Transformers. BERT"
create_issue 8 "5-NLP"          "Lesson 19: Named Entity Recognition"
create_issue 9 "5-NLP"          "Lesson 20: Large Language Models, Prompt Programming and Few-Shot Tasks"
create_issue 10 "6-Other"       "Lesson 21: Genetic Algorithms"
create_issue 10 "6-Other"       "Lesson 22: Deep Reinforcement Learning"
create_issue 11 "6-Other"       "Lesson 23: Multi-Agent Systems"
create_issue 12 "7-Ethics"      "Lesson 24: AI Ethics and Responsible AI"
create_issue 12 "X-Extras"      "Lesson 25: Multi-Modal Networks, CLIP and VQGAN"

echo "All 25 issues created."