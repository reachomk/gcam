.class public Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;
.super Ljava/lang/Object;
.source "ImageIntentModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/ImageIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V
    .locals 0

    .prologue
    .line 2439
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomRatioChanged(F)V
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModuleUI$Listener;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$200(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;

    invoke-direct {v1, p1}, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;-><init>(F)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 1443
    return-void
.end method
