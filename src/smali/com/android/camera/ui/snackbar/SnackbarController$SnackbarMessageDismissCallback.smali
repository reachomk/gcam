.class final Lcom/android/camera/ui/snackbar/SnackbarController$SnackbarMessageDismissCallback;
.super Ljava/lang/Object;
.source "SnackbarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/snackbar/SnackbarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarMessageDismissCallback"
.end annotation


# instance fields
.field private isCancelled:Z


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/camera/ui/snackbar/SnackbarController$SnackbarMessageDismissCallback;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 196
    :cond_0
    return-void
.end method
