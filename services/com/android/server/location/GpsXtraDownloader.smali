.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 45
    const-string/jumbo v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .registers 12
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "count":I
    const-string/jumbo v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "server1":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "server2":Ljava/lang/String;
    const-string/jumbo v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_1e

    const/4 v1, 0x1

    .line 62
    :cond_1e
    if-eqz v5, :cond_22

    add-int/lit8 v1, v1, 0x1

    .line 63
    :cond_22
    if-eqz v6, :cond_26

    add-int/lit8 v1, v1, 0x1

    .line 66
    :cond_26
    const-string/jumbo v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 68
    const-string/jumbo v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 73
    :goto_38
    if-nez v1, :cond_49

    .line 74
    const-string/jumbo v7, "GpsXtraDownloader"

    const-string/jumbo v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object v9, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 55
    :goto_45
    return-void

    .line 70
    :cond_46
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_38

    .line 77
    :cond_49
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz v4, :cond_75

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v4, v7, v8

    move v2, v1

    .line 80
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_56
    if-eqz v5, :cond_5f

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 81
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5f
    if-eqz v6, :cond_73

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 84
    :goto_67
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 85
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_45

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_73
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_67

    :cond_75
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_56
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 19
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_20

    const-string/jumbo v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Downloading XTRA data from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_20
    const/4 v4, 0x0

    .line 118
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :try_start_21
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 120
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string/jumbo v9, "Accept"

    .line 121
    const-string/jumbo v10, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    .line 119
    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v9, "x-wap-profile"

    .line 124
    const-string/jumbo v10, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    .line 122
    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget v9, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 128
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 129
    .local v8, "statusCode":I
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_77

    .line 130
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_70

    const-string/jumbo v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP error downloading gps XTRA: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_70} :catch_b2
    .catchall {:try_start_21 .. :try_end_70} :catchall_dc

    .line 131
    :cond_70
    const/4 v9, 0x0

    .line 150
    if-eqz v4, :cond_76

    .line 151
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 131
    :cond_76
    return-object v9

    .line 134
    :cond_77
    const/4 v10, 0x0

    const/4 v6, 0x0

    .local v6, "in":Ljava/io/InputStream;
    :try_start_79
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 135
    .local v6, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v3, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 138
    .local v2, "buffer":[B
    :cond_86
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_d0

    .line 139
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 140
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    int-to-long v12, v9

    const-wide/32 v14, 0xf4240

    cmp-long v9, v12, v14

    if-lez v9, :cond_86

    .line 141
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_aa

    const-string/jumbo v9, "GpsXtraDownloader"

    const-string/jumbo v11, "XTRA file too large"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_aa} :catch_eb
    .catchall {:try_start_79 .. :try_end_aa} :catchall_107

    .line 146
    :cond_aa
    if-eqz v6, :cond_af

    :try_start_ac
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_c7
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b2
    .catchall {:try_start_ac .. :try_end_af} :catchall_dc

    :cond_af
    :goto_af
    if-eqz v10, :cond_c9

    :try_start_b1
    throw v10
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b2} :catch_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_dc

    .line 147
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    :catch_b2
    move-exception v7

    .line 148
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_b3
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_c0

    const-string/jumbo v9, "GpsXtraDownloader"

    const-string/jumbo v10, "Error downloading gps XTRA: "

    invoke-static {v9, v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_dc

    .line 150
    :cond_c0
    if-eqz v4, :cond_c5

    .line 151
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    :cond_c5
    const/4 v9, 0x0

    return-object v9

    .line 146
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :catch_c7
    move-exception v10

    goto :goto_af

    .line 142
    :cond_c9
    const/4 v9, 0x0

    .line 150
    if-eqz v4, :cond_cf

    .line 151
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    :cond_cf
    return-object v9

    .line 145
    :cond_d0
    :try_start_d0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d3} :catch_eb
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_107

    move-result-object v9

    .line 146
    if-eqz v6, :cond_d9

    :try_start_d6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_d9} :catch_e3
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_b2
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_dc

    :cond_d9
    :goto_d9
    if-eqz v10, :cond_e5

    :try_start_db
    throw v10
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_dc} :catch_b2
    .catchall {:try_start_db .. :try_end_dc} :catchall_dc

    .line 149
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "statusCode":I
    :catchall_dc
    move-exception v9

    .line 150
    if-eqz v4, :cond_e2

    .line 151
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 149
    :cond_e2
    throw v9

    .line 146
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "count":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "statusCode":I
    :catch_e3
    move-exception v10

    goto :goto_d9

    .line 150
    :cond_e5
    if-eqz v4, :cond_ea

    .line 151
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 145
    :cond_ea
    return-object v9

    .line 146
    .end local v2    # "buffer":[B
    .end local v3    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "in":Ljava/io/InputStream;
    :catch_eb
    move-exception v9

    :try_start_ec
    throw v9
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v10

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_f3
    if-eqz v6, :cond_f8

    :try_start_f5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_f8} :catch_fb
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_b2
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_dc

    :cond_f8
    :goto_f8
    if-eqz v10, :cond_106

    :try_start_fa
    throw v10

    :catch_fb
    move-exception v11

    if-nez v10, :cond_100

    move-object v10, v11

    goto :goto_f8

    :cond_100
    if-eq v10, v11, :cond_f8

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f8

    :cond_106
    throw v9
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_107} :catch_b2
    .catchall {:try_start_fa .. :try_end_107} :catchall_dc

    :catchall_107
    move-exception v9

    goto :goto_f3
.end method

.method downloadXtraData()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 93
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_9

    .line 94
    return-object v3

    .line 98
    .end local v0    # "result":[B
    :cond_9
    if-nez v0, :cond_29

    .line 99
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 102
    .local v0, "result":[B
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 103
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_25

    .line 104
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 107
    :cond_25
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_9

    .line 110
    .end local v0    # "result":[B
    :cond_29
    return-object v0
.end method
