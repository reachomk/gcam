.class final Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$4;
.super Ljava/lang/Object;
.source "ViewfinderGestureManagerWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private synthetic val$tapListenerDelegate:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$4;->val$evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    iput-object p2, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$4;->val$tapListenerDelegate:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTap(Landroid/graphics/PointF;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$4;->val$evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->showAffordance()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$4;->val$tapListenerDelegate:Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$TapListener;->onTap(Landroid/graphics/PointF;)Z

    .line 132
    const/4 v0, 0x0

    return v0
.end method
