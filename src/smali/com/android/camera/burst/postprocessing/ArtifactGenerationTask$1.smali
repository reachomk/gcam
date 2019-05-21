.class final Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$1;
.super Lcom/google/android/libraries/smartburst/utils/VoidBiFunction;
.source "ArtifactGenerationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->doPostProcessing(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidBiFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
        "Lcom/google/android/libraries/smartburst/storage/MetadataStore;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$1;->this$0:Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidBiFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 201
    check-cast p1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1204
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$1;->this$0:Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;

    iget-object v0, v0, Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->smartBurstLogs:Lcom/android/camera/stats/SmartBurstMetaData;

    invoke-virtual {v0, p1}, Lcom/android/camera/stats/SmartBurstMetaData;->extractStatistics(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 201
    return-void
.end method
