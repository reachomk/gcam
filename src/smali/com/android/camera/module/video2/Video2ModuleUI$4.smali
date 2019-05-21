.class final Lcom/android/camera/module/video2/Video2ModuleUI$4;
.super Ljava/lang/Object;
.source "Video2ModuleUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video2/Video2ModuleUI;->buildStorageDialogOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ModuleUI;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ModuleUI$4;->this$0:Lcom/android/camera/module/video2/Video2ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ModuleUI$4;->this$0:Lcom/android/camera/module/video2/Video2ModuleUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/video2/Video2ModuleUI;->access$202(Lcom/android/camera/module/video2/Video2ModuleUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 378
    return-void
.end method
