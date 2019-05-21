.class final Lcom/android/camera/storage/StorageDialogBuilderImpl$2;
.super Ljava/lang/Object;
.source "StorageDialogBuilderImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/StorageDialogBuilderImpl;->getDialogBuilder(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/StorageDialogBuilderImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/StorageDialogBuilderImpl;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$2;->this$0:Lcom/android/camera/storage/StorageDialogBuilderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl$2;->this$0:Lcom/android/camera/storage/StorageDialogBuilderImpl;

    invoke-static {v1}, Lcom/android/camera/storage/StorageDialogBuilderImpl;->access$200(Lcom/android/camera/storage/StorageDialogBuilderImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method
