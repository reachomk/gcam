.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$45;
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
    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1099
    .line 2102
    new-instance v2, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;

    const-string v3, "AllSmiles"

    const/4 v4, 0x5

    const-class v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    .line 3085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2105
    check-cast v0, Lcom/google/android/libraries/smartburst/storage/MetadataStore;

    const-class v1, Ljava/nio/ByteBuffer;

    const-string v5, "landmark_extrapolator_models"

    .line 2106
    invoke-virtual {p1, v1, v5}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifactRenderer;-><init>(Ljava/lang/String;ILcom/google/android/libraries/smartburst/storage/MetadataStore;Ljava/nio/ByteBuffer;)V

    .line 1099
    return-object v2
.end method
