.class final Lcom/android/camera/ui/CountDownView$MainHandler;
.super Landroid/os/Handler;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/CountDownView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/CountDownView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/CountDownView;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/ui/CountDownView$MainHandler;->this$0:Lcom/android/camera/ui/CountDownView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/CountDownView;B)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CountDownView$MainHandler;-><init>(Lcom/android/camera/ui/CountDownView;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView$MainHandler;->this$0:Lcom/android/camera/ui/CountDownView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/CountDownView$MainHandler;->this$0:Lcom/android/camera/ui/CountDownView;

    invoke-static {v2}, Lcom/android/camera/ui/CountDownView;->access$100(Lcom/android/camera/ui/CountDownView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/CountDownView;->access$200(Lcom/android/camera/ui/CountDownView;ZI)V

    .line 153
    :cond_0
    return-void
.end method
