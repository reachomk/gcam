.class public Lcom/android/camera/ui/controller/FlashOverrideStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "FlashOverrideStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;,
        Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashAvailable;
    }
.end annotation


# instance fields
.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([C)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/FlashOverrideStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/controller/FlashOverrideStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/camera/ui/controller/FlashOverrideStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 20
    return-void
.end method
