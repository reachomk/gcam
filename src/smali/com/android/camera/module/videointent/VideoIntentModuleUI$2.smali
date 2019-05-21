.class final Lcom/android/camera/module/videointent/VideoIntentModuleUI$2;
.super Ljava/lang/Object;
.source "VideoIntentModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/VideoIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/VideoIntentModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModuleUI;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$2;->this$0:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaxZoomChanged$5132ILG_()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public final onZoomEnd()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public final onZoomValueChanged(F)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$2;->this$0:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModuleUI;->access$100(Lcom/android/camera/module/videointent/VideoIntentModuleUI;)Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;->onZoomRatioChanged(F)V

    .line 227
    return-void
.end method
