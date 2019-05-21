.class final Lcom/android/camera/module/imageintent/ImageIntentModule$2;
.super Ljava/lang/Object;
.source "ImageIntentModule.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButtonHolder$CancelButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/ImageIntentModule;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/ImageIntentModule;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$2;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelButtonClicked()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/camera/module/imageintent/ImageIntentModule$2;->this$0:Lcom/android/camera/module/imageintent/ImageIntentModule;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/ImageIntentModule;->access$200(Lcom/android/camera/module/imageintent/ImageIntentModule;)Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventTapOnCancelShutterButton;

    invoke-direct {v1}, Lcom/android/camera/module/imageintent/event/EventTapOnCancelShutterButton;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 293
    return-void
.end method
