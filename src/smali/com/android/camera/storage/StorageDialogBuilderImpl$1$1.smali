.class final Lcom/android/camera/storage/StorageDialogBuilderImpl$1$1;
.super Ljava/lang/Object;
.source "StorageDialogBuilderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/StorageDialogBuilderImpl$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/storage/StorageDialogBuilderImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/StorageDialogBuilderImpl$1;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1$1;->this$1:Lcom/android/camera/storage/StorageDialogBuilderImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1$1;->this$1:Lcom/android/camera/storage/StorageDialogBuilderImpl$1;

    iget-object v0, v0, Lcom/android/camera/storage/StorageDialogBuilderImpl$1;->val$storageFullDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 124
    return-void
.end method
