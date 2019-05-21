.class final Lcom/android/camera/ui/PrimaryShutterButton$26;
.super Ljava/lang/Object;
.source "PrimaryShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PrimaryShutterButton;->setScale(F)V
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
    .line 1122
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$26;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/camera/ui/PrimaryShutterButton$26;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/PrimaryShutterButton;->access$3900(Lcom/android/camera/ui/PrimaryShutterButton;)V

    .line 1126
    return-void
.end method
