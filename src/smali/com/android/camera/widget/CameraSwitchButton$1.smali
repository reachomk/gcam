.class final Lcom/android/camera/widget/CameraSwitchButton$1;
.super Ljava/lang/Object;
.source "CameraSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 74
    iput-object p1, p0, Lcom/android/camera/widget/CameraSwitchButton$1;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton$1;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-static {v0}, Lcom/android/camera/widget/CameraSwitchButton;->access$000(Lcom/android/camera/widget/CameraSwitchButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraSwitchButton$1;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-static {v0}, Lcom/android/camera/widget/CameraSwitchButton;->access$100(Lcom/android/camera/widget/CameraSwitchButton;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 81
    :goto_1
    iget-object v2, p0, Lcom/android/camera/widget/CameraSwitchButton$1;->this$0:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/widget/CameraSwitchButton;->setStateAnimated(IZ)V

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
