.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;
.super Ljava/lang/Object;
.source "CollageArtifactRenderer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Score"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;",
        ">;"
    }
.end annotation


# instance fields
.field final index:I

.field private score:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;->score:F

    .line 413
    iput p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;->index:I

    .line 414
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 407
    check-cast p1, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;

    .line 1418
    iget v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;->score:F

    iget v1, p1, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;->score:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;->score:F

    iget v1, p1, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifactRenderer$Score;->score:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 407
    goto :goto_0
.end method
