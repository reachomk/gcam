.class Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PrimaryShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VideoClickAnimationsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ShutterButtonHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShutterButtonHolder;)V
    .locals 0

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v0}, Lcom/android/camera/ui/ShutterButtonHolder;->access$900(Lcom/android/camera/ui/ShutterButtonHolder;)Lcom/android/camera/ui/PauseResumeButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PauseResumeButton;->setClickable(Z)V

    .line 1334
    return-void
.end method

.method public onAnimationsStarted()V
    .locals 2

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$VideoClickAnimationsListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v0}, Lcom/android/camera/ui/ShutterButtonHolder;->access$900(Lcom/android/camera/ui/ShutterButtonHolder;)Lcom/android/camera/ui/PauseResumeButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PauseResumeButton;->setClickable(Z)V

    .line 1329
    return-void
.end method
