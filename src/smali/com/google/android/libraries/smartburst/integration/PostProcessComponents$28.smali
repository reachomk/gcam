.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$28;
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
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 892
    .line 1895
    new-instance v3, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifactRenderer;

    const-class v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1896
    check-cast v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    const-class v1, Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;

    .line 3085
    const-string v2, "default"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1897
    check-cast v1, Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;

    const-class v2, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;

    .line 4085
    const-string v4, "default"

    invoke-virtual {p1, v2, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1898
    check-cast v2, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifactRenderer;-><init>(Lcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;)V

    .line 892
    return-object v3
.end method
