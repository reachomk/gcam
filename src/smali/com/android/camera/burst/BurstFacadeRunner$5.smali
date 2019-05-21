.class final Lcom/android/camera/burst/BurstFacadeRunner$5;
.super Ljava/lang/Object;
.source "BurstFacadeRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstFacadeRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/hdrplus/HdrPlusSessionModule;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeRunner$5;->val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeRunner$5;->val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    invoke-virtual {v0}, Lcom/android/camera/hdrplus/HdrPlusSessionModule;->reEnableUI()V

    .line 441
    return-void
.end method
