.class public final Lcom/android/camera/debug/ScrollingTextLoggerView;
.super Landroid/widget/TextView;
.source "ScrollingTextLoggerView.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xbbbbbc

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/camera/debug/ScrollingTextLoggerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/debug/ScrollingTextLoggerView;->setTextColor(I)V

    .line 34
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/camera/debug/ScrollingTextLoggerView;->setMaxLines(I)V

    .line 35
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/android/camera/debug/ScrollingTextLoggerView;->setGravity(I)V

    .line 36
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/debug/ScrollingTextLoggerView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
