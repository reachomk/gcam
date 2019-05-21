.class final Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask$2;
.super Ljava/lang/Object;
.source "ArtifactGenerationTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/postprocessing/ArtifactGenerationTask;->rasterizeFramePreviews(Landroid/content/Context;Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/burst/postprocessing/StackFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 498
    check-cast p1, Lcom/android/camera/burst/postprocessing/StackFrame;

    check-cast p2, Lcom/android/camera/burst/postprocessing/StackFrame;

    .line 1501
    iget v0, p2, Lcom/android/camera/burst/postprocessing/StackFrame;->frameScore:F

    iget v1, p1, Lcom/android/camera/burst/postprocessing/StackFrame;->frameScore:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 498
    return v0
.end method
