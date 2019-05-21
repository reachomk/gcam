.class final Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;
.super Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;
.source "PreviewSwipeGestureStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeUnknownState"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V

    return-void
.end method


# virtual methods
.method public final onEnterState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    sget v1, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->UNKNOWN_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1P6ATJ9CLRL6TR9E1IKEPBJEHQN4PAJEHGN8PADC5N62PR5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FDLNM8PBJETKN8OR85T874PBMD5INEKRND5O6AHR5EDQ7ASJ5ADQ62T359LGMSOB7CLP28JBFCHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NMQRR4CLPNEQBKCDK2UK3ICLR6IPBNADRMIS358TIN6T3LE9IL6T31EHIKQOBEC5JMASH49LNM8P9R(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;I)I

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0, v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$202(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeUnknownState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0, v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$002(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F

    .line 105
    return-void
.end method
