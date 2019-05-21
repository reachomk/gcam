.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$40;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;
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
        "Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1046
    .line 2049
    const-class v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2049
    check-cast v4, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2050
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "post_proc_quality_metric"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 2052
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer;

    const-string v1, "Collage_PhotoBooth"

    const/4 v2, 0x7

    const-class v3, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-string v6, "combined_layouts"

    .line 2054
    invoke-virtual {p1, v3, v6}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer;-><init>(Ljava/lang/String;I[Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V

    .line 1046
    return-object v0
.end method
