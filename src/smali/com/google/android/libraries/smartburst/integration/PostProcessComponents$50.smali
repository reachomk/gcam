.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$50;
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
        "Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1217
    .line 2220
    new-instance v2, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;

    const-class v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-string v1, "Video_VFR"

    .line 2221
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;

    const-class v1, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    const-string v3, "VFR_video_artifact_render"

    .line 2222
    invoke-virtual {p1, v1, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;

    invoke-direct {v2, v0, v1}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactSpec;-><init>(Lcom/google/android/libraries/smartburst/segmentation/Resegmenter;Lcom/google/android/libraries/smartburst/artifacts/ArtifactRenderer;)V

    .line 1217
    return-object v2
.end method
