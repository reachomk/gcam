.class final Lcom/android/camera/module/capture/CaptureModule$23;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->stopBurstIfStorageLow(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;

.field private synthetic val$storageFullDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$23;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModule$23;->val$storageFullDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$23;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->LOW_STORAGE_ALERT:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1247
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$23;->val$storageFullDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1248
    return-void
.end method
