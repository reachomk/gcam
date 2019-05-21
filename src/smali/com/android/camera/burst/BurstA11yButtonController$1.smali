.class final Lcom/android/camera/burst/BurstA11yButtonController$1;
.super Ljava/lang/Object;
.source "BurstA11yButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstA11yButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/BurstA11yButtonController;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstA11yButtonController;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/burst/BurstA11yButtonController$1;->this$0:Lcom/android/camera/burst/BurstA11yButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/burst/BurstA11yButtonController$1;->this$0:Lcom/android/camera/burst/BurstA11yButtonController;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstA11yButtonController;->stop()V

    .line 37
    return-void
.end method
