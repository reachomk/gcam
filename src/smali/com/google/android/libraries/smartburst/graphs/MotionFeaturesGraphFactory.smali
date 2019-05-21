.class public final Lcom/google/android/libraries/smartburst/graphs/MotionFeaturesGraphFactory;
.super Ljava/lang/Object;
.source "MotionFeaturesGraphFactory.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/graphs/MotionFeaturesGraphFactory$SbMotionAnalysisCalculator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 10

    .prologue
    .line 25
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    .line 26
    const-string v0, "videoProvider"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 27
    const-string v0, "targetFrameRate"

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 28
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;

    const-string v0, "camera"

    invoke-direct {v2, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 30
    const-string v0, "videoProvider"

    const-string v3, "camera"

    const-string v4, "provider"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 31
    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "camera"

    const-string v4, "minDimension"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 32
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "camera"

    const-string v4, "multipleOfX"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 33
    const-string v0, "targetFrameRate"

    const-string v3, "camera"

    const-string v4, "frameRate"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 34
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;

    const-string v3, "motionAnalysisCalculator"

    invoke-direct {v0, p1, v3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 36
    new-instance v3, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v4, "motionSaliencyOutput"

    invoke-direct {v3, p1, v4}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 38
    new-instance v4, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v5, "motionEstimationSaliencyOutput"

    invoke-direct {v4, p1, v5}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 41
    new-instance v5, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v6, "interFrameHomographyOutput"

    invoke-direct {v5, p1, v6}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v5}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 44
    new-instance v6, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v7, "cameraMotionOutput"

    invoke-direct {v6, p1, v7}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v6}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 46
    new-instance v7, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ToGrayValuesFilter;

    const-string v8, "toGrayValues"

    invoke-direct {v7, p1, v8}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ToGrayValuesFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v7}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 48
    const-string v8, "video"

    const-string v9, "image"

    invoke-virtual {v1, v2, v8, v7, v9}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 49
    const-string v2, "image"

    const-string v8, "image"

    invoke-virtual {v1, v7, v2, v0, v8}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 50
    const-string v2, "motionSaliencyOutput"

    const-string v7, "feature"

    invoke-virtual {v1, v0, v2, v3, v7}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 52
    const-string v2, "motionEstimationSaliencyOutput"

    const-string v3, "feature"

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 54
    const-string v2, "interFrameHomographyOutput"

    const-string v3, "feature"

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 56
    const-string v2, "cameraMotionOutput"

    const-string v3, "feature"

    invoke-virtual {v1, v0, v2, v6, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->build()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v1

    .line 59
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;

    new-instance v2, Lcom/google/android/libraries/smartburst/graphs/MotionFeaturesGraphFactory$SbMotionAnalysisCalculator;

    invoke-direct {v2, v1}, Lcom/google/android/libraries/smartburst/graphs/MotionFeaturesGraphFactory$SbMotionAnalysisCalculator;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 60
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/smartburst/graphs/MotionFeaturesGraphFactory$SbMotionAnalysisCalculator;->create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->setGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 61
    return-object v1
.end method
