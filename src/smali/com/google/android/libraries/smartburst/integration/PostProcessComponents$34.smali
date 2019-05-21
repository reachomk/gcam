.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$34;
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
    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 984
    .line 1987
    new-instance v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifactRenderer;

    const-string v1, "GIF_Summary"

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 2085
    const-string v4, "default"

    invoke-virtual {p1, v3, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1989
    check-cast v3, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    const-class v4, Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;

    .line 3085
    const-string v5, "default"

    invoke-virtual {p1, v4, v5}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1990
    check-cast v4, Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;

    const-class v5, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;

    .line 4085
    const-string v6, "default"

    invoke-virtual {p1, v5, v6}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1991
    check-cast v5, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifactRenderer;-><init>(Ljava/lang/String;ILcom/google/android/libraries/smartburst/storage/MetadataStore;Lcom/google/android/libraries/smartburst/artifacts/gifutils/Quantizer;Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;)V

    .line 984
    return-object v0
.end method
