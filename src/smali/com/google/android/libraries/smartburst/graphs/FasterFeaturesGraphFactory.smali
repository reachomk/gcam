.class public final Lcom/google/android/libraries/smartburst/graphs/FasterFeaturesGraphFactory;
.super Ljava/lang/Object;
.source "FasterFeaturesGraphFactory.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 11

    .prologue
    const/4 v8, 0x7

    const/4 v10, 0x5

    const/4 v9, 0x1

    .line 21
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    .line 22
    const-string v1, "videoProvider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 23
    const-string v1, "targetFrameRate"

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 24
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;

    const-string v2, "camera"

    invoke-direct {v1, p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 26
    const-string v2, "videoProvider"

    const-string v3, "camera"

    const-string v4, "provider"

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 27
    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "camera"

    const-string v4, "minDimension"

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 28
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "camera"

    const-string v4, "multipleOfX"

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 29
    const-string v2, "targetFrameRate"

    const-string v3, "camera"

    const-string v4, "frameRate"

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 30
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ToGrayFilter;

    const-string v3, "toGray"

    invoke-direct {v2, p1, v3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/ToGrayFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 32
    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/BranchFilter;

    const-string v4, "inputBranch"

    invoke-direct {v3, p1, v4}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/BranchFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 34
    new-instance v4, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;

    const-string v5, "verticalBoxFilter"

    invoke-direct {v4, p1, v5}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 36
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "verticalBoxFilter"

    const-string v7, "filterWidth"

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "verticalBoxFilter"

    const-string v7, "filterHeight"

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 38
    new-instance v5, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;

    const-string v6, "horizontalBoxFilter"

    invoke-direct {v5, p1, v6}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/BoxFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 40
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "horizontalBoxFilter"

    const-string v8, "filterWidth"

    invoke-virtual {v0, v6, v7, v8}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 41
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "horizontalBoxFilter"

    const-string v8, "filterHeight"

    invoke-virtual {v0, v6, v7, v8}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 42
    new-instance v6, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;

    const-string v7, "imageStats"

    invoke-direct {v6, p1, v7}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v6}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 44
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "imageStats"

    const-string v9, "numBlocksX"

    invoke-virtual {v0, v7, v8, v9}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 45
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "imageStats"

    const-string v9, "numBlocksY"

    invoke-virtual {v0, v7, v8, v9}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 46
    const-string v7, "video"

    const-string v8, "image"

    invoke-virtual {v0, v1, v7, v2, v8}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 47
    const-string v1, "image"

    const-string v7, "input"

    invoke-virtual {v0, v2, v1, v3, v7}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 48
    const-string v1, "toHorizontalBlur"

    const-string v2, "image"

    invoke-virtual {v0, v3, v1, v5, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 49
    const-string v1, "image"

    const-string v2, "blurredX"

    invoke-virtual {v0, v5, v1, v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 50
    const-string v1, "toVerticalBlur"

    const-string v2, "image"

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 51
    const-string v1, "image"

    const-string v2, "blurredY"

    invoke-virtual {v0, v4, v1, v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 52
    const-string v1, "toImageStats"

    const-string v2, "image"

    invoke-virtual {v0, v3, v1, v6, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->build()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    return-object v0
.end method
