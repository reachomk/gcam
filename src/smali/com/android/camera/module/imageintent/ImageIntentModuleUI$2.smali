.class final Lcom/android/camera/module/imageintent/ImageIntentModuleUI$2;
.super Ljava/lang/Object;
.source "ImageIntentModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/ImageIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$2;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaxZoomChanged$5132ILG_()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final onZoomEnd()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public final onZoomValueChanged(F)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$2;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModuleUI;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI;->access$200(Lcom/android/camera/module/imageintent/ImageIntentModuleUI;)Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;->onZoomRatioChanged(F)V

    .line 243
    return-void
.end method
