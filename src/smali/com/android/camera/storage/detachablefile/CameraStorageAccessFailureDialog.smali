.class public final Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;
.super Landroid/app/DialogFragment;
.source "CameraStorageAccessFailureDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;

.field private final positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "CameraStorageAccessFailureDialog"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$1;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$1;-><init>(Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;)V

    iput-object v0, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->dialogDismissing()V

    return-void
.end method

.method private final dialogDismissing()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->listener:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->listener:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;

    invoke-interface {v0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;->onDialogDismissed()V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->dialogDismissing()V

    .line 74
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010355

    const/4 v4, 0x1

    .line 60
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 62
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const v3, 0x10302d2

    invoke-direct {v2, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0095

    .line 64
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0096

    .line 65
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0097

    iget-object v3, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->dialogDismissing()V

    .line 79
    return-void
.end method

.method public final setListener(Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->listener:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Setting listener twice!"

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->listener:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$DismissedListener;

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
