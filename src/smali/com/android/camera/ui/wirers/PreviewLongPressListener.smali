.class public final Lcom/android/camera/ui/wirers/PreviewLongPressListener;
.super Ljava/lang/Object;
.source "PreviewLongPressListener.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;


# instance fields
.field private currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    .line 26
    return-void
.end method


# virtual methods
.method public final clearListener()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->onGestureCancel()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    .line 63
    return-void
.end method

.method public final onFingerUp()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    .line 40
    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-interface {v0}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;->onFingerUp()V

    goto :goto_0
.end method

.method public final onGestureCancel()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    .line 49
    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;->onGestureCancel()V

    goto :goto_0
.end method

.method public final onLongPress(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    .line 31
    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;->onLongPress(Landroid/graphics/PointF;)V

    goto :goto_0
.end method

.method public final setListener(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    iput-object v0, p0, Lcom/android/camera/ui/wirers/PreviewLongPressListener;->currentListener:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$LongPressListener;

    .line 57
    return-void
.end method
