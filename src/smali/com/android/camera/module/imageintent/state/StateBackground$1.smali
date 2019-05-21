.class final Lcom/android/camera/module/imageintent/state/StateBackground$1;
.super Ljava/lang/Object;
.source "StateBackground.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateBackground;->registerEventHandlers()V
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
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateBackground;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateBackground;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateBackground$1;->this$0:Lcom/android/camera/module/imageintent/state/StateBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 27
    .line 1030
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateForeground;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateBackground$1;->this$0:Lcom/android/camera/module/imageintent/state/StateBackground;

    invoke-direct {v0, v1}, Lcom/android/camera/module/imageintent/state/StateForeground;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V

    .line 27
    return-object v0
.end method
