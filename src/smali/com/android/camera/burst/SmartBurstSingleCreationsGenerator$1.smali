.class final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$1;
.super Ljava/lang/Object;
.source "SmartBurstSingleCreationsGenerator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->prepareArtifactGenerationPipeline(Landroid/content/Context;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/media/Summary;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/pipeline/ArtifactGenerationPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/media/Summary;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$summary:Lcom/google/android/libraries/smartburst/media/Summary;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/media/Summary;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$1;->val$summary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    .line 1138
    iget-object v0, p0, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$1;->val$summary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 134
    return-object v0
.end method