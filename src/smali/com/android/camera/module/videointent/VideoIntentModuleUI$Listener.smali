.class public Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;
.super Ljava/lang/Object;
.source "VideoIntentModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/VideoIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/videointent/VideoIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModule;)V
    .locals 0

    .prologue
    .line 2219
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomRatioChanged(F)V
    .locals 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$Listener;->this$0:Lcom/android/camera/module/videointent/VideoIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/videointent/VideoIntentModule;->access$100(Lcom/android/camera/module/videointent/VideoIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;

    invoke-direct {v1, p1}, Lcom/android/camera/module/imageintent/event/EventZoomRatioChanged;-><init>(F)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 1223
    return-void
.end method
