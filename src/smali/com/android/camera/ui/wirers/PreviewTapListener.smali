.class public final Lcom/android/camera/ui/wirers/PreviewTapListener;
.super Ljava/lang/Object;
.source "PreviewTapListener.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;


# instance fields
.field private currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/wirers/PreviewTapListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    .line 28
    return-void
.end method


# virtual methods
.method public final clearListener()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/wirers/PreviewTapListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    .line 45
    return-void
.end method

.method public final onTap(Landroid/graphics/PointF;)Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/wirers/PreviewTapListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    .line 33
    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;->onTap(Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setListener(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    iput-object v0, p0, Lcom/android/camera/ui/wirers/PreviewTapListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    .line 41
    return-void
.end method
