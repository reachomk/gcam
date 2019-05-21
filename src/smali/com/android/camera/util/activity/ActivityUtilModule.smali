.class public Lcom/android/camera/util/activity/ActivityUtilModule;
.super Ljava/lang/Object;
.source "ActivityUtilModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideOneCameraFuture(Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1047
    return-object p0
.end method

.method public static provideOneCameraSettableFuture()Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/OneCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static provideStartupConfig$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUOR1E1Q7ASJ55T1M2S3KELP6AJBFCHQMOPA3DTN6CQB789QMIR34CLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOB3EHKNCQBKF4NM6RRECPKMEBQJEHGN4T3LE11MURJKCLS78KR5DHIM6T3FE8I56T31E9Q7AS23DTN78PBOEGTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURBFCHQMOP9F9TN6AJBFCHQMOPA3DTN6CQB77C______(Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;Lcom/android/camera/advice/AdviceManagerImpl;)Lcom/android/camera/module/OneModuleConfig;
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/camera/module/capture/CaptureModuleConfigBuilder;->buildStartupConfig$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNL6T31E9Q7AS23DTN78PBOEH9MAR35CDQ6USH4ADQ62SJKELO46RREEHINGT1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TMMUP3LDHIIUJRECL6MUP3LDHIK6RRECPKMEEO_(Lcom/android/camera/advice/AdviceManagerImpl;)Lcom/android/camera/module/OneModuleConfig;

    move-result-object v0

    return-object v0
.end method

.method public static provideStartupContext$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNL6T31E9Q7AS23DTN78PBOEH9MAR35CDQ6USHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNL6T31E9Q7AS23DTN78PBOEH9MAR35CDQ6USH4ADQ62SJKELO46RREEHINGT1R(Lcom/android/camera/activity/config/StartupContextSelector;)Lcom/android/camera/advice/AdviceManagerImpl;
    .locals 1

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/camera/activity/config/StartupContextSelector;->getStartupContext$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUKRKC5P78TBG8DNMST35F1Q56PBCCLHN8RRI4H9N8OBIEHQN0GRFDPQ6AU3K7C______()Lcom/android/camera/advice/AdviceManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static provideViewfinderFuture(Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1033
    return-object p0
.end method

.method public static provideViewfinderSettableFuture()Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/Viewfinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    return-object v0
.end method
