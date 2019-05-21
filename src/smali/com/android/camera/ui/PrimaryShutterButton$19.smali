.class final Lcom/android/camera/ui/PrimaryShutterButton$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PrimaryShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PrimaryShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PrimaryShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$19;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$19;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    sget-object v1, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;->PHOTO:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->resetShutterButton(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V

    .line 930
    return-void
.end method
