.class final Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ViewfinderGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;->this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;->this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-static {v0}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;->access$1200(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;->this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-static {v2}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;->access$1100(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;->onScale(FF)V

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;->this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-static {v0, v2}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;->access$1002(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;Z)Z

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;->this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-static {v0}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;->access$1200(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;->this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-static {v1}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;->access$1100(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;->onScaleBegin(F)V

    .line 191
    return v2
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$2;->this$0:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-static {v0}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;->access$1200(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;->onScaleEnd()V

    .line 203
    return-void
.end method
