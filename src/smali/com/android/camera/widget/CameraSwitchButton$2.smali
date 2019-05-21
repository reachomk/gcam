.class final Lcom/android/camera/widget/CameraSwitchButton$2;
.super Ljava/lang/Object;
.source "CameraSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/CameraSwitchButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/widget/CameraSwitchButton;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/CameraSwitchButton;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/widget/CameraSwitchButton$2;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton$2;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v0}, Lcom/android/camera/widget/CameraSwitchButton;->invalidate()V

    .line 91
    const/4 v0, 0x0

    return v0
.end method
