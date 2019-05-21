.class final Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$1;
.super Ljava/lang/Object;
.source "ViewfinderGestureManagerWirer.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnPreviewTouchedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;->wire()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$viewfinderGestureManager:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$1;->val$viewfinderGestureManager:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewTouched(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$1;->val$viewfinderGestureManager:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager;->onTouch(Landroid/view/MotionEvent;)Z

    .line 72
    return-void
.end method
