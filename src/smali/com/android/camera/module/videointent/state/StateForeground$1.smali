.class final Lcom/android/camera/module/videointent/state/StateForeground$1;
.super Ljava/lang/Object;
.source "StateForeground.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/state/StateForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/state/StateForeground;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/state/StateForeground;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/camera/module/videointent/state/StateForeground$1;->this$0:Lcom/android/camera/module/videointent/state/StateForeground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 25
    .line 1028
    new-instance v0, Lcom/android/camera/module/videointent/state/StateBackground;

    iget-object v1, p0, Lcom/android/camera/module/videointent/state/StateForeground$1;->this$0:Lcom/android/camera/module/videointent/state/StateForeground;

    invoke-direct {v0, v1}, Lcom/android/camera/module/videointent/state/StateBackground;-><init>(Lcom/android/camera/module/videointent/state/VideoIntentState;)V

    .line 25
    return-object v0
.end method
