.class final Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;
.super Ljava/lang/Object;
.source "OneCameraPictureTaker.java"


# instance fields
.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final pictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

.field private final shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/error/ShotFailureHandler;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;->pictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    .line 25
    iput-object p2, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 26
    iput-object p3, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    .line 27
    return-void
.end method


# virtual methods
.method public final takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O94A1K6UT3F8DGN0T3LE9IL0OBIC5MMAT35E9PJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKKOORFDKNMERRFCTM6ABR3DTMMQRRE5TQN8QBC5THMURJ3ELP74PBEEGNKOQBJEHIMSOB2DHIKCTBKELP6AEO_(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/googlehelp/internal/common/zzd;",
            "Lcom/android/camera/session/StackableSession;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;->pictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    iget-object v1, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v2, p0, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraPictureTaker;->shotFailureHandler:Lcom/android/camera/error/ShotFailureHandler;

    .line 32
    invoke-static {v1, p1, p2, v2}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->create$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCLP74RRI5T9MGRRK8PGMIR3LE9IKGOBECHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJM___(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;Lcom/android/camera/error/ShotFailureHandler;)Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/photo/PictureTaker;->takePicture$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJMAACCDNMQBR7DTNMER355THMURBDDTN2UTBKD5M2UORFDPHNASJICLN78BQCD5PN8PBEC5H6OPA6ELQ7ASJ57C______(Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
