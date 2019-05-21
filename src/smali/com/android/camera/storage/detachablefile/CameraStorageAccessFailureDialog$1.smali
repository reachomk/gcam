.class final Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$1;
.super Ljava/lang/Object;
.source "CameraStorageAccessFailureDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$1;->this$0:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog$1;->this$0:Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;

    invoke-static {v0}, Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;->access$000(Lcom/android/camera/storage/detachablefile/CameraStorageAccessFailureDialog;)V

    .line 35
    return-void
.end method
