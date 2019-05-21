.class final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;
.super Ljava/lang/Object;
.source "SmartBurstSingleCreationsGenerator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAndPreparePipelineFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/Empty;",
        "Lcom/google/android/libraries/smartburst/pipeline/Pipeline",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

.field private final executor:Ljava/util/concurrent/Executor;

.field private synthetic this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->executor:Ljava/util/concurrent/Executor;

    .line 251
    iput-object p3, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->allocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 252
    return-void
.end method

.method private apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNNAT39DHPIUHBDE1Q7IEP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDMM2SJKC9QN4SRK5TO6IS35DHKMSP9FA1KN0PBCD5N6AEO_()Lcom/google/android/libraries/smartburst/pipeline/Pipeline;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/smartburst/pipeline/Pipeline",
            "<",
            "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    invoke-static {v0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$300(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$700(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;

    invoke-direct {v0, v5}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;-><init>(B)V

    .line 288
    :goto_0
    return-object v0

    .line 266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    invoke-static {v0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$300(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->fromSessionDirectory(Ljava/io/File;)Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    move-result-object v2

    .line 268
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    invoke-static {v0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$300(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->fromSessionDirectory(Ljava/io/File;)Lcom/google/android/libraries/smartburst/storage/MetadataStore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 277
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    .line 279
    invoke-static {v0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$300(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Ljava/io/File;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser(Lcom/google/android/libraries/smartburst/storage/MetadataStore;)Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v1

    .line 278
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->loadFromDirectory(Ljava/io/File;Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;)Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;->build()Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v4

    .line 284
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/media/Summary;->getTimestamps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;

    invoke-direct {v0, v5}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;-><init>(B)V

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 272
    invoke-static {}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$900()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    invoke-static {v2}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$300(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to load feature files from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    new-instance v0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;

    invoke-direct {v0, v5}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$EmptyArtifactGenerationPipeline;-><init>(B)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    iget-object v1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->this$0:Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;

    .line 289
    invoke-static {v1}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$1000(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;)Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->allocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 288
    invoke-static/range {v0 .. v6}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->access$1100(Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;Landroid/content/Context;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$LoadAndPreparePipelineFunction;->apply$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNNAT39DHPIUHBDE1Q7IEP99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDMM2SJKC9QN4SRK5TO6IS35DHKMSP9FA1KN0PBCD5N6AEO_()Lcom/google/android/libraries/smartburst/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method
