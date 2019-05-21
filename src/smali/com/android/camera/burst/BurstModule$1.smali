.class final Lcom/android/camera/burst/BurstModule$1;
.super Ljava/lang/Object;
.source "BurstModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$burstFacade:Lcom/android/camera/burst/BurstFacade;

.field private synthetic val$parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/hdrplus/HdrPlusModule;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/burst/BurstModule$1;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    iput-object p2, p0, Lcom/android/camera/burst/BurstModule$1;->val$parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/burst/BurstModule$1;->val$burstFacade:Lcom/android/camera/burst/BurstFacade;

    iget-object v1, p0, Lcom/android/camera/burst/BurstModule$1;->val$parameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEH362OR1CHII8GJLE9PN8K3IDTHMASRJD5N6EK31E9GMQPBKCLP76EO_:Lcom/android/camera/hdrplus/HdrPlusModule;

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstFacade;->setBurstProcessingParameters$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6A922ELP76T2GE9NM6PBJEDKMSPQGC5P62RB5EHIN4SPR55B0____(Lcom/android/camera/hdrplus/HdrPlusModule;)V

    .line 119
    return-void
.end method
