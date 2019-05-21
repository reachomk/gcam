.class public Lcom/google/android/vision/face/DetectorFactory;
.super Ljava/lang/Object;
.source "DetectorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vision/face/DetectorFactory$Callback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettings:Lcom/google/android/vision/face/Detector$Settings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/google/android/vision/face/DetectorFactory;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lcom/google/android/vision/face/Detector$Settings;

    invoke-direct {v0}, Lcom/google/android/vision/face/Detector$Settings;-><init>()V

    iput-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    .line 189
    return-void
.end method


# virtual methods
.method public final build(Lcom/google/android/vision/face/DetectorFactory$Callback;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vision/face/DetectorFactory$Callback;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/vision/face/Detector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 225
    .line 1279
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0, v4}, Lcom/google/android/vision/face/Detector$Settings;->setModelFilesLocation(I)V

    .line 1281
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getClassificationSettings()Lcom/google/android/vision/face/Detector$ClassificationSettings;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$ClassificationSettings;->classifyingEyesOpen()Z

    move-result v1

    .line 1283
    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$ClassificationSettings;->classifyingSmiling()Z

    move-result v0

    .line 1285
    iget-object v2, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v2}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v2

    .line 1286
    invoke-virtual {v2}, Lcom/google/android/vision/face/Detector$DetectionSettings;->getLandmarkDetectorType()I

    move-result v3

    .line 1287
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1288
    if-nez v3, :cond_0

    .line 1290
    invoke-virtual {v2, v5}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setLandmarkDetectorType(I)V

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-static {v0, v1}, Lcom/google/android/vision/face/ModelManager;->areApkModelsInstalled(Landroid/content/Context;Lcom/google/android/vision/face/Detector$Settings;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "APK lacks required face model files.  Execute the \'setup_project\' script from the SDK to add model files to your app."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1292
    :cond_1
    if-eqz v0, :cond_0

    .line 1293
    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_0

    .line 1296
    :cond_2
    invoke-virtual {v2, v4}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setLandmarkDetectorType(I)V

    goto :goto_0

    .line 233
    :cond_3
    new-instance v0, Lcom/google/android/vision/face/Detector;

    iget-object v1, p0, Lcom/google/android/vision/face/DetectorFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-direct {v0, v1, v2}, Lcom/google/android/vision/face/Detector;-><init>(Landroid/content/Context;Lcom/google/android/vision/face/Detector$Settings;)V

    .line 237
    new-instance v1, Lcom/google/android/vision/face/ImmediateDetectorFuture;

    invoke-direct {v1, v0}, Lcom/google/android/vision/face/ImmediateDetectorFuture;-><init>(Lcom/google/android/vision/face/Detector;)V

    return-object v1
.end method

.method public final setClassifyEyesOpen(Z)Lcom/google/android/vision/face/DetectorFactory;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getClassificationSettings()Lcom/google/android/vision/face/Detector$ClassificationSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/Detector$ClassificationSettings;->setClassifyEyesOpen(Z)V

    .line 702
    return-object p0
.end method

.method public final setClassifySmiling(Z)Lcom/google/android/vision/face/DetectorFactory;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getClassificationSettings()Lcom/google/android/vision/face/Detector$ClassificationSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/Detector$ClassificationSettings;->setClassifySmiling(Z)V

    .line 724
    return-object p0
.end method

.method public final setConfidenceThreshold(F)Lcom/google/android/vision/face/DetectorFactory;
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setConfidenceThreshold(F)V

    .line 596
    return-object p0
.end method

.method public final setDetectorType(I)Lcom/google/android/vision/face/DetectorFactory;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setDetectorType(I)V

    .line 320
    return-object p0
.end method

.method public final setFastDetectorAggressiveness(I)Lcom/google/android/vision/face/DetectorFactory;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setFastDetectorAggressiveness(I)V

    .line 395
    return-object p0
.end method

.method public final setLandmarkDetectorType(I)Lcom/google/android/vision/face/DetectorFactory;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setLandmarkDetectorType(I)V

    .line 357
    return-object p0
.end method

.method public final setMaxNumFaces(I)Lcom/google/android/vision/face/DetectorFactory;
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setMaxNumFaces(I)V

    .line 576
    return-object p0
.end method

.method public final setMinEyeDistancePixels(I)Lcom/google/android/vision/face/DetectorFactory;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setMinEyeDistancePixels(I)V

    .line 424
    return-object p0
.end method

.method public final setProportionalMinFaceSize(F)Lcom/google/android/vision/face/DetectorFactory;
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getDetectionSettings()Lcom/google/android/vision/face/Detector$DetectionSettings;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/google/android/vision/face/Detector$DetectionSettings;->setProportionalMinFaceSize(F)V

    .line 497
    return-object p0
.end method

.method public final setTrackingEnabled(Z)Lcom/google/android/vision/face/DetectorFactory;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/vision/face/DetectorFactory;->mSettings:Lcom/google/android/vision/face/Detector$Settings;

    invoke-virtual {v0}, Lcom/google/android/vision/face/Detector$Settings;->getTrackingSettings()Lcom/google/android/vision/face/Detector$TrackingSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vision/face/Detector$TrackingSettings;->setEnabled(Z)V

    .line 676
    return-object p0
.end method
