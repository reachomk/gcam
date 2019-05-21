.class final Lcom/android/camera/ui/PrimaryShutterButton$27;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PrimaryShutterButton;->drawableStateChanged()V
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
    .line 1309
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$27;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$27;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$4000(Lcom/android/camera/ui/PrimaryShutterButton;Z)V

    .line 1313
    return-void
.end method
