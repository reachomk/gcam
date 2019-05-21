.class public Lcom/android/camera/stats/LogArtifactGenerationFunction;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "LogArtifactGenerationFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final metaData:Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

.field private final storage:Lcom/android/camera/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "LogAfctGenFunc"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;ZLcom/android/camera/burst/postprocessing/CreationType;Ljava/lang/String;Lcom/android/camera/storage/Storage;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->contentResolver:Landroid/content/ContentResolver;

    .line 51
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->metaData:Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

    .line 52
    iget-object v0, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->metaData:Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

    invoke-direct {p0, p3}, Lcom/android/camera/stats/LogArtifactGenerationFunction;->creationTypeToProto(Lcom/android/camera/burst/postprocessing/CreationType;)I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->creationType:I

    .line 53
    iget-object v1, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->metaData:Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->generationCause:I

    .line 54
    iget-object v0, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->metaData:Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

    invoke-static {}, Lcom/android/camera/stats/FilenameHasher;->getInstance()Lcom/android/camera/stats/FilenameHasher;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/camera/stats/FilenameHasher;->hashFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;->directoryNameHash:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->storage:Lcom/android/camera/storage/Storage;

    .line 56
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private creationTypeToProto(Lcom/android/camera/burst/postprocessing/CreationType;)I
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/android/camera/burst/postprocessing/CreationType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    sget-object v0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown creation type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for logging"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 97
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 103
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 105
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public process(Lcom/google/common/base/Optional;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 67
    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t get session URI"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->storage:Lcom/android/camera/storage/Storage;

    invoke-interface {v1, v0}, Lcom/android/camera/storage/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    sget-object v2, Lcom/android/camera/stats/LogArtifactGenerationFunction;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Couldn\'t get content URI for session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    sget-object v1, Lcom/android/camera/stats/LogArtifactGenerationFunction;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t get file name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    new-instance v0, Lcom/android/camera/stats/CaptureDoneEventBuilder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;-><init>(IZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/stats/LogArtifactGenerationFunction;->metaData:Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/camera/stats/CaptureDoneEventBuilder;->setSmartBurstCreationMeta(Lcom/google/common/logging/nano/eventprotos$SmartBurstCreationMetaData;)Lcom/android/camera/stats/CaptureDoneEventBuilder;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/stats/UsageStatistics;->submitCaptureDoneEvent(Lcom/android/camera/stats/CaptureDoneEventBuilder;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/common/base/Optional;

    invoke-virtual {p0, p1}, Lcom/android/camera/stats/LogArtifactGenerationFunction;->process(Lcom/google/common/base/Optional;)V

    return-void
.end method
