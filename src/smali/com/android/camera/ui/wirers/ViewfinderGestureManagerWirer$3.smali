.class final Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$3;
.super Ljava/lang/Object;
.source "ViewfinderGestureManagerWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$VerticalScrollListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$3;->val$evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFingerUp()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$3;->val$evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->onFingerUp()V

    .line 114
    return-void
.end method

.method public final onGestureCancel()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$3;->val$evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->hide()V

    .line 119
    return-void
.end method

.method public final onVerticalScroll(F)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$3;->val$evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->onScroll(F)V

    .line 109
    return-void
.end method
