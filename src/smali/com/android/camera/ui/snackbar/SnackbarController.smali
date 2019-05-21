.class public final Lcom/android/camera/ui/snackbar/SnackbarController;
.super Ljava/lang/Object;
.source "SnackbarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/snackbar/SnackbarController$SnackbarMessageDismissCallback;
    }
.end annotation


# instance fields
.field private dismissCallback:Lcom/android/camera/ui/snackbar/SnackbarController$SnackbarMessageDismissCallback;

.field private message:Ljava/lang/String;

.field private snackbar:Lcom/android/camera/ui/snackbar/Snackbar;

.field private swipeDismissTouchListener:Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/camera/ui/snackbar/SnackbarController;->snackbar:Lcom/android/camera/ui/snackbar/Snackbar;

    .line 22
    iput-object v0, p0, Lcom/android/camera/ui/snackbar/SnackbarController;->message:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/android/camera/ui/snackbar/SnackbarController;->dismissCallback:Lcom/android/camera/ui/snackbar/SnackbarController$SnackbarMessageDismissCallback;

    .line 24
    iput-object v0, p0, Lcom/android/camera/ui/snackbar/SnackbarController;->swipeDismissTouchListener:Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;

    .line 32
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
