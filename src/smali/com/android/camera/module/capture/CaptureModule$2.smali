.class final Lcom/android/camera/module/capture/CaptureModule$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$2;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$2;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$400(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/util/activity/ActivityFinishWithReason;

    move-result-object v0

    const-string v1, "CaptureModule: Out of storage space on device."

    invoke-virtual {v0, v1}, Lcom/android/camera/util/activity/ActivityFinishWithReason;->finish(Ljava/lang/String;)V

    .line 355
    return-void
.end method
