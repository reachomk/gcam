.class final Lcom/android/camera/burst/BurstModule$2;
.super Ljava/lang/Object;
.source "BurstModule.java"

# interfaces
.implements Lcom/android/camera/behavior/Behavior;


# instance fields
.field private synthetic val$burstFacade:Lcom/android/camera/burst/BurstFacade;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacade;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/camera/burst/BurstModule$2;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/burst/BurstModule$2;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstFacade;->setBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR55B0____(Lcom/android/camera/hdrplus/HdrPlusModule;)V

    .line 140
    return-void
.end method
