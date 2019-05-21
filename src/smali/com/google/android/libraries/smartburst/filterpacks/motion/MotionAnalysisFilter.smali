.class public Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "MotionAnalysisFilter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CAMERA_MOTION:Ljava/lang/String; = "cameraMotion"

.field private static final CONSECUTIVE_FAILURE_THRESHOLD:I = 0x0

.field private static final FRAME:Ljava/lang/String; = "image"

.field private static final FRAME_RATE:Ljava/lang/String; = "frameRate"

.field private static final INTERFRAME_TRANSFORM:Ljava/lang/String; = "interframeTransform"

.field private static final NS_IN_S:J = 0x3b9aca00L

.field private static final SALIENCY:Ljava/lang/String; = "saliency"

.field private static final SALIENCY_DOWNSAMPLING_RATIO:Ljava/lang/String; = "saliencyDownsamplingRatio"

.field private static final SCORE:Ljava/lang/String; = "score"

.field private static final TAG:Ljava/lang/String; = "MotionAnalysisFilter"


# instance fields
.field private mConsecutiveFailureCounter:I

.field private mContextBuffer:Ljava/nio/ByteBuffer;

.field private mContextBufferSaliency:Ljava/nio/ByteBuffer;

.field private mFrameRate:F

.field private mIsMotionAnalysisSetUp:Z

.field private mOriginalInputDimensions:[I

.field private mPreviousTimestamp:J

.field private mSaliencyDownsamplingRatio:F

.field private mWorkingFrameHeight:I

.field private mWorkingFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const-string v0, "smartburst-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 51
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mFrameRate:F

    .line 53
    const v0, 0x3f533333    # 0.825f

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mSaliencyDownsamplingRatio:F

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mPreviousTimestamp:J

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mConsecutiveFailureCounter:I

    .line 71
    return-void
.end method

.method private native computeMotionSaliency(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;FIILjava/nio/ByteBuffer;)F
.end method

.method private native getContextLength()I
.end method

.method private native getMotionSaliencyContextLength()I
.end method

.method private native prepareMotionAnalyzer(Ljava/nio/ByteBuffer;IIF)Z
.end method

.method private native releaseMotionAnalyzer(Ljava/nio/ByteBuffer;)V
.end method

.method private native stabilizationMotionEstimationProcessFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
.end method

.method private native stabilizationMotionEstimationSetUp(Ljava/nio/ByteBuffer;II)V
.end method

.method private native stabilizationMotionEstimationTearDown(Ljava/nio/ByteBuffer;)V
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 75
    const/16 v0, 0x64

    invoke-static {v0, v7}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 76
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 77
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    .line 78
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    .line 80
    new-instance v4, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v4}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v5, "image"

    const/4 v6, 0x2

    .line 81
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "frameRate"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 82
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v5

    invoke-virtual {v0, v4, v7, v5}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "saliencyDownsamplingRatio"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 84
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v5

    .line 83
    invoke-virtual {v0, v4, v7, v5}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v4, "interframeTransform"

    .line 85
    invoke-virtual {v0, v4, v7, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "cameraMotion"

    .line 87
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "saliency"

    .line 88
    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "score"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 89
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method protected onClose()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mOriginalInputDimensions:[I

    .line 118
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mIsMotionAnalysisSetUp:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->stabilizationMotionEstimationTearDown(Ljava/nio/ByteBuffer;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBufferSaliency:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->releaseMotionAnalyzer(Ljava/nio/ByteBuffer;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mIsMotionAnalysisSetUp:Z

    .line 123
    :cond_0
    return-void
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frameRate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "mFrameRate"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saliencyDownsamplingRatio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "mSaliencyDownsamplingRatio"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 103
    :cond_1
    return-void
.end method

.method protected onPrepare()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->getContextLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBuffer:Ljava/nio/ByteBuffer;

    .line 108
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->getMotionSaliencyContextLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBufferSaliency:Ljava/nio/ByteBuffer;

    .line 109
    return-void
.end method

.method protected onProcess()V
    .locals 18

    .prologue
    .line 132
    const-string v2, "image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v17

    .line 134
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 136
    const/4 v3, 0x0

    aget v3, v2, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    aget v3, v2, v3

    if-gtz v3, :cond_2

    .line 137
    :cond_0
    const-string v3, "MotionAnalysisFilter"

    const-string v4, "Frame dimensions must be positive. Current dimensions are (%d, %d). Ignoring current frame."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 137
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mOriginalInputDimensions:[I

    if-nez v3, :cond_4

    .line 148
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mOriginalInputDimensions:[I

    .line 160
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mIsMotionAnalysisSetUp:Z

    if-nez v3, :cond_6

    .line 161
    const/4 v3, 0x0

    aget v3, v2, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameWidth:I

    .line 162
    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameHeight:I

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->stabilizationMotionEstimationSetUp(Ljava/nio/ByteBuffer;II)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBufferSaliency:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mSaliencyDownsamplingRatio:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->prepareMotionAnalyzer(Ljava/nio/ByteBuffer;IIF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 169
    const-string v2, "MotionAnalysisFilter"

    const-string v3, "Failed to initialize motion saliency analyzer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->stabilizationMotionEstimationTearDown(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 149
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mOriginalInputDimensions:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 150
    const-string v3, "MotionAnalysisFilter"

    const-string v4, "Frame dimensions have changed during processing of a video, original dimensions were (%d, %d), current dimensions are (%d, %d). Ignoring current frame."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mOriginalInputDimensions:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mOriginalInputDimensions:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aget v7, v2, v7

    .line 154
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 150
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mIsMotionAnalysisSetUp:Z

    .line 179
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getTimestamp()J

    move-result-wide v2

    .line 180
    const/high16 v13, 0x3f800000    # 1.0f

    .line 181
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mPreviousTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mPreviousTimestamp:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mFrameRate:F

    mul-float/2addr v4, v5

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float v13, v4, v5

    .line 185
    :cond_7
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mPreviousTimestamp:J

    .line 188
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 191
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 192
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 193
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 196
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 197
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameHeight:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->stabilizationMotionEstimationProcessFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 204
    const-string v2, "interframeTransform"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    .line 205
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v3

    .line 207
    const/16 v5, 0x9

    new-array v5, v5, [F

    .line 208
    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 209
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 211
    invoke-static {v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->createHomographyTransform([F)Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;

    move-result-object v5

    .line 214
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mContextBufferSaliency:Ljava/nio/ByteBuffer;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object v11, v4

    move-object v12, v7

    invoke-direct/range {v9 .. v16}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->computeMotionSaliency(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;FIILjava/nio/ByteBuffer;)F

    move-result v4

    .line 219
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 222
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 225
    const-string v2, "cameraMotion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v3

    .line 226
    if-eqz v3, :cond_9

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v6

    .line 230
    const/4 v2, 0x0

    .line 232
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->isDegenerateHomography()Z

    move-result v7

    if-nez v7, :cond_c

    .line 233
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 234
    const/4 v7, 0x0

    .line 235
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->getDisplacementX()F

    move-result v9

    div-float/2addr v9, v13

    aput v9, v2, v7

    .line 236
    const/4 v7, 0x1

    .line 237
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterpacks/motion/HomographyTransform;->getDisplacementY()F

    move-result v5

    div-float/2addr v5, v13

    aput v5, v2, v7

    .line 241
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameHeight:I

    if-le v5, v7, :cond_b

    .line 242
    const/4 v5, 0x1

    aget v7, v2, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameHeight:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v7, v9

    aput v7, v2, v5

    .line 246
    :goto_1
    invoke-virtual {v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 247
    const/4 v2, 0x1

    .line 248
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mConsecutiveFailureCounter:I

    .line 265
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 266
    invoke-virtual {v3, v6}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 270
    :cond_9
    const-string v2, "saliency"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_a

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v3

    .line 274
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 275
    invoke-virtual {v8, v5}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 276
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 280
    :cond_a
    const-string v2, "score"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_1

    .line 282
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v3

    .line 283
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    goto/16 :goto_0

    .line 244
    :cond_b
    const/4 v5, 0x0

    aget v7, v2, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameWidth:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mWorkingFrameHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v7, v9

    aput v7, v2, v5

    goto :goto_1

    .line 250
    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mConsecutiveFailureCounter:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mConsecutiveFailureCounter:I

    .line 253
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionAnalysisFilter;->mConsecutiveFailureCounter:I

    if-lez v5, :cond_8

    .line 258
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 259
    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v2, v5

    .line 260
    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v2, v5

    .line 261
    invoke-virtual {v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 262
    const/4 v2, 0x1

    goto :goto_2
.end method
