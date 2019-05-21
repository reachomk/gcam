.class public final Lcom/google/android/libraries/smartburst/graphs/FaceFeaturesGraphFactory;
.super Ljava/lang/Object;
.source "FaceFeaturesGraphFactory.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/graphs/FaceFeaturesGraphFactory$SbFaceScoreCalculator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 12

    .prologue
    .line 28
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    .line 29
    const-string v0, "videoProvider"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 30
    const-string v0, "targetFrameRate"

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 31
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;

    const-string v0, "camera"

    invoke-direct {v2, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 33
    const-string v0, "videoProvider"

    const-string v3, "camera"

    const-string v4, "provider"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 34
    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "camera"

    const-string v4, "minDimension"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 35
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "camera"

    const-string v4, "multipleOfX"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 36
    const-string v0, "targetFrameRate"

    const-string v3, "camera"

    const-string v4, "frameRate"

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 37
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;

    const-string v3, "faceScoreCalculator"

    invoke-direct {v0, p1, v3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 39
    new-instance v3, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v4, "faceScoreOutput"

    invoke-direct {v3, p1, v4}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 41
    new-instance v4, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v5, "faceSmilingScoreOutput"

    invoke-direct {v4, p1, v5}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 44
    new-instance v5, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v6, "faceLeftEyeOpenScoreOutput"

    invoke-direct {v5, p1, v6}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v5}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 47
    new-instance v6, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v7, "faceRightEyeOpenScoreOutput"

    invoke-direct {v6, p1, v7}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v6}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 50
    new-instance v7, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;

    const-string v8, "faceSharpnessScoreOutput"

    invoke-direct {v7, p1, v8}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v7}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 53
    new-instance v8, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ToGrayValuesFilter;

    const-string v9, "toGrayValues"

    invoke-direct {v8, p1, v9}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ToGrayValuesFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v8}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 55
    new-instance v9, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/BranchFilter;

    const-string v10, "rgbBranch"

    invoke-direct {v9, p1, v10}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/BranchFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v9}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 57
    const-string v10, "video"

    const-string v11, "input"

    invoke-virtual {v1, v2, v10, v9, v11}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 58
    const-string v2, "toGrayValues"

    const-string v10, "image"

    invoke-virtual {v1, v9, v2, v8, v10}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 59
    const-string v2, "image"

    const-string v10, "grayImage"

    invoke-virtual {v1, v8, v2, v0, v10}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 60
    const-string v2, "toFaceScorer"

    const-string v8, "rgbImage"

    invoke-virtual {v1, v9, v2, v0, v8}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 61
    const-string v2, "faceCountOutput"

    const-string v8, "feature"

    invoke-virtual {v1, v0, v2, v3, v8}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 62
    const-string v2, "faceIsSmilingOutput"

    const-string v3, "feature"

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 64
    const-string v2, "faceIsLeftEyeOpenOutput"

    const-string v3, "feature"

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 66
    const-string v2, "faceIsRightEyeOpenOutput"

    const-string v3, "feature"

    invoke-virtual {v1, v0, v2, v6, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 68
    const-string v2, "faceSharpnessOutput"

    const-string v3, "feature"

    invoke-virtual {v1, v0, v2, v7, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->build()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v1

    .line 71
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;

    new-instance v2, Lcom/google/android/libraries/smartburst/graphs/FaceFeaturesGraphFactory$SbFaceScoreCalculator;

    invoke-direct {v2, v1}, Lcom/google/android/libraries/smartburst/graphs/FaceFeaturesGraphFactory$SbFaceScoreCalculator;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 72
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/smartburst/graphs/FaceFeaturesGraphFactory$SbFaceScoreCalculator;->create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->setGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 73
    return-object v1
.end method
