.class public Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "ConnectivityMonitorFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TH7ARBGEHIM6Q1FCTM6IP355TMM2RJ1CTIN4BQ3DTN6SPB3EHKNCQBKF56MURJ9EHNN4923DTN6SPB3EHKNCQBKF566ISRKCLN6ASHR55666RRD5TH7ARBGEHIM6Q1FCTM6IP355TMM2RJ1CTIN4BQ3DTN6SPB3EHKNCQBKF56MURJ9EHNN4EO_(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;
    .locals 1

    .prologue
    .line 1019
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1020
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1021
    :goto_0
    if-eqz v0, :cond_1

    .line 1022
    new-instance v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 1024
    :goto_1
    return-object v0

    .line 1020
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1024
    :cond_1
    new-instance v0, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    goto :goto_1
.end method
