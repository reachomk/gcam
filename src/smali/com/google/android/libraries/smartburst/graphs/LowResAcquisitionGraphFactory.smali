.class public final Lcom/google/android/libraries/smartburst/graphs/LowResAcquisitionGraphFactory;
.super Ljava/lang/Object;
.source "LowResAcquisitionGraphFactory.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    .line 20
    const-string v1, "videoProvider"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 21
    const-string v1, "cropRect"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 22
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;

    const-string v2, "camera"

    invoke-direct {v1, p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/VideoProviderSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 24
    const-string v2, "videoProvider"

    const-string v3, "camera"

    const-string v4, "provider"

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 25
    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "camera"

    const-string v4, "minDimension"

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 26
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;

    const-string v3, "cropper"

    invoke-direct {v2, p1, v3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/transform/CropFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 28
    const-string v3, "cropRect"

    const-string v4, "cropper"

    const-string v5, "cropRect"

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    .line 29
    new-instance v3, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;

    const-string v4, "frameConsumer"

    invoke-direct {v3, p1, v4}, Lcom/google/android/libraries/smartburst/filterpacks/storage/FrameConsumerFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 31
    const-string v4, "video"

    const-string v5, "image"

    invoke-virtual {v0, v1, v4, v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 32
    const-string v1, "image"

    const-string v4, "frame"

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->build()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    return-object v0
.end method
