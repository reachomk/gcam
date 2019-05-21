.class public Lcom/google/android/vision/face/Detector$ClassificationSettings;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vision/face/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassificationSettings"
.end annotation


# instance fields
.field private mClassifyEyesOpen:Z

.field private mClassifySmiling:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-boolean v0, p0, Lcom/google/android/vision/face/Detector$ClassificationSettings;->mClassifyEyesOpen:Z

    .line 232
    iput-boolean v0, p0, Lcom/google/android/vision/face/Detector$ClassificationSettings;->mClassifySmiling:Z

    return-void
.end method


# virtual methods
.method classifyingEyesOpen()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/android/vision/face/Detector$ClassificationSettings;->mClassifyEyesOpen:Z

    return v0
.end method

.method classifyingSmiling()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/android/vision/face/Detector$ClassificationSettings;->mClassifySmiling:Z

    return v0
.end method

.method setClassifyEyesOpen(Z)V
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/google/android/vision/face/Detector$ClassificationSettings;->mClassifyEyesOpen:Z

    .line 236
    return-void
.end method

.method setClassifySmiling(Z)V
    .locals 0

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/android/vision/face/Detector$ClassificationSettings;->mClassifySmiling:Z

    .line 244
    return-void
.end method
