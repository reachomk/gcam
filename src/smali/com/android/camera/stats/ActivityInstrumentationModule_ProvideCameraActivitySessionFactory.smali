.class public final Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideCameraActivitySessionFactory;
.super Ljava/lang/Object;
.source "ActivityInstrumentationModule_ProvideCameraActivitySessionFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/android/camera/stats/ActivityInstrumentationModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/stats/ActivityInstrumentationModule;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideCameraActivitySessionFactory;->module:Lcom/android/camera/stats/ActivityInstrumentationModule;

    .line 16
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPN8OBKECNK2ORKD5R6IT3P95N76T3IELMMARJKC5Q6IRRE9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/stats/ActivityInstrumentationModule;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/stats/ActivityInstrumentationModule;",
            ")",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideCameraActivitySessionFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideCameraActivitySessionFactory;-><init>(Lcom/android/camera/stats/ActivityInstrumentationModule;)V

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/android/camera/stats/CameraActivitySession;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideCameraActivitySessionFactory;->module:Lcom/android/camera/stats/ActivityInstrumentationModule;

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/stats/ActivityInstrumentationModule;->provideCameraActivitySession()Lcom/android/camera/stats/CameraActivitySession;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 20
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/CameraActivitySession;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/android/camera/stats/ActivityInstrumentationModule_ProvideCameraActivitySessionFactory;->get()Lcom/android/camera/stats/CameraActivitySession;

    move-result-object v0

    return-object v0
.end method
